# Matlab Basics Notes

1.

- ’.*’对数组中每个相应元素操作
- ‘*’两数组相乘

2.

![image-20210626182650259](C:\Users\Mimas\AppData\Roaming\Typora\typora-user-images\image-20210626182650259.png)

![image-20210626182729809](C:\Users\Mimas\AppData\Roaming\Typora\typora-user-images\image-20210626182729809.png)

![image-20210626182754521](C:\Users\Mimas\AppData\Roaming\Typora\typora-user-images\image-20210626182754521.png)

#### 3.Workspace variables

 do not persist after you exit MATLAB. Save your data for later use with the `save` command,

```
save myfile.mat
```

Saving preserves the workspace in your current working folder in a compressed file with a `.mat` extension, called a MAT-file.

To clear all the variables from the workspace, use the `clear` command.

Restore data from a MAT-file into the workspace using `load`.

```matlab
load myfile.mat
```

#### 4.strings

When you are working with text, enclose sequences of characters in double quotes. You can assign text to a variable.

```
t = "Hello, world";
```



If the text includes double quotes, use two double quotes within the definition.

```
q = "Something ""quoted"" and something else."
```

To add text to the end of a string, use the plus operator, `+`.

```
f = 71;
c = (f-32)/1.8;
tempText = "Temperature is " + c + "C"
tempText = 
"Temperature is 21.6667C"
```

Similar to numeric arrays, string arrays can have multiple elements. Use the `strlength` function to find the length of each string within an array.

#### 5.character arrays

Sometimes characters represent data that does not correspond to text, such as a DNA sequence. You can store this type of data in a character array, which has data type `char`. Character arrays use single quotes.

```
seq = 'GCTAGAATCC';
whos seq
  Name      Size            Bytes  Class    Attributes
  seq       1x10               20  char               
```



Each element of the array contains a single character.

#### 6.Plots

Both the `surf` function and its companion `mesh` display surfaces in three dimensions. `surf` displays both the connecting lines and the faces of the surface in color. `mesh` produces wireframe surfaces that color only the lines connecting the defining points.

#### 7.Functions

| [`ans`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/ans.html) | Most recent answer                           |
| ------------------------------------------------------------ | -------------------------------------------- |
| [`clc`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/clc.html) | Clear Command Window                         |
| [`diary`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/diary.html) | Log Command Window text to file              |
| [`format`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/format.html) | Set output display format for Command Window |
| [`home`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/home.html) | Send cursor home                             |
| [`iskeyword`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/iskeyword.html) | Determine whether input is MATLAB keyword    |
| [`more`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/more.html) | Control paged output in Command Window       |
| [`commandwindow`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/commandwindow.html) | Select the Command Window                    |
| [`commandhistory`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/commandhistory.html) | Open Command History window                  |

#### 8.View Output by Page

Output in the Command Window might exceed the visible portion of the window. You can view the output, one screen at a time:

1. In the Command Window, type `more on` to enable paged output.
2. Type the command that generates large output.
3. View the output:
   - Advance to the next line by pressing **Enter**.
   - Advance to the next page by pressing **Space Bar**.
   - Stop displaying the output by pressing **q**.

To disable paged output, type `more off`.

#### 9.Create and Combine Arrays

| [`zeros`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/zeros.html) | Create array of all zeros                                 |
| ------------------------------------------------------------ | --------------------------------------------------------- |
| [`ones`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/ones.html) | Create array of all ones                                  |
| [`rand`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/rand.html) | Uniformly distributed random numbers                      |
| [`true`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/true.html) | Logical 1 (true)                                          |
| [`false`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/false.html) | Logical 0 (false)                                         |
| [`eye`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/eye.html) | Identity matrix                                           |
| [`diag`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/diag.html) | Create diagonal matrix or get diagonal elements of matrix |
| [`blkdiag`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/blkdiag.html) | Block diagonal matrix                                     |
| [`cat`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/double.cat.html) | Concatenate arrays                                        |
| [`horzcat`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/horzcat.html) | Concatenate arrays horizontally                           |
| [`vertcat`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/vertcat.html) | Concatenate arrays vertically                             |
| [`repelem`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/repelem.html) | Repeat copies of array elements                           |
| [`repmat`](https://www.mathworks.com/help/releases/R2021a/matlab/ref/repmat.html) | Repeat copies of array                                    |