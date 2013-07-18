#!/usr/local/bin/rdmd

import std.file;
import std.path;
import std.stdio;

const char* cstring(string s)
{
	auto cstring = new char[](s.length + 1);
	cstring[0 .. s.length] = s[];
	cstring[$ - 1] = '\0';
	return cstring.ptr;
}

int main(char[][] args)
{
	const string cwd = std.path.absolutePath(".");
	auto const range = std.array.split(std.path.dirName(cwd), "/");

	int depth = 0;
	string backout;
	while(!std.file.exists("build") && range.sizeof > depth)
	{
		std.file.chdir("..");
		++depth;
		backout ~= "../";
	}

	if(std.file.exists("build/debug"))
	{
		string oos = "build/debug";
		foreach(directory; range[$ - depth .. $])
			oos ~= "/" ~ directory;
		std.stdio.write("cd ", backout, oos, " && ");
		std.file.chdir(oos);

		string cmd = "make";
		foreach(param; args[1 .. $])
			cmd ~= " " ~ param;
		std.stdio.writeln(cmd);
		std.c.process.system(cstring(cmd));
	}
	else
	{
		std.stdio.fprintf(std.stdio.stderr.getFP(), "error: build directory not found\n");
		return 1;
	}

	return 0;
}
