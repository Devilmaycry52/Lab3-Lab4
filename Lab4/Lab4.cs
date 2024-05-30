using System;
using System.IO;

class Program
{
    static void Main(string[] args)
    {
        int exitCode = 0;

        Console.WriteLine("Enter the directory path:");
        string directoryPath = Console.ReadLine();

        try
        {
            if (!Directory.Exists(directoryPath))
            {
                throw new DirectoryNotFoundException("Directory does not exist.");
            }

            Console.WriteLine("Enter the file pattern (e.g., *.txt):");
            string filePattern = Console.ReadLine();

            DirectoryInfo directoryInfo = new DirectoryInfo(directoryPath);
            FileInfo[] files = directoryInfo.GetFiles(filePattern);

            long totalSize = 0;

            foreach (FileInfo file in files)
            {
                totalSize += file.Length;
            }

            if (totalSize == 0)
            {
                Console.WriteLine("No files matching the pattern found in the directory.");
                exitCode = 1;
            }
            else
            {
                Console.WriteLine("Total size of " + filePattern + " files in directory: " + totalSize + " bytes.");
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine("Error: " + ex.Message);
            exitCode = 1;
        }
        finally
        {
            if (exitCode == 0)
            {
                Console.WriteLine("Program successfully completed with exit code 0.");
            }
            else
            {
                Console.WriteLine("Program completed with exit code 1.");
            }
            Environment.Exit(exitCode);
        }
    }
}
