## math model notes

1.交换问题 无差别曲线

2.效用函数 等效用线

### 3.线性规划

- [x,fval]=linprog(c,A,b,Aeq,Beq,lb,rb)
- conditions：x是列向量
- 若效用函数中出现x的绝对值，用将其分为u，v两向量进行转化

### 4.整数规划

- x=linprog(c,intcon,a,b,Aeq,Beq,lb,rb)
- intcon：记录限定为整数的x的下标
- 有时需将c转化为列向量，得到的x再通过reshape函数恢复形式

### 5.非线性规划

- [x,fval]=fmincon(fun，x0,A,b,Aeq,beq,lb,ub,nonlcon,options)

- nonlcon–nonlinear constraints

- 一般把fun和nonlcon编写在function文件中，再通过单引号调用函数文件，如 fmincon（‘fun’,….)

- x0指从x0点开始搜索解

- options 优化选项

  - 例如，要显示算法在每次迭代中的输出，请将 `Display` 选项设置为 `'iter'`：

    ```
    options = optimset('Display','iter');
    ```

  ### 选项表

  | 选项          | 说明                                                         | 求解器                                        |
  | :------------ | :----------------------------------------------------------- | :-------------------------------------------- |
  | `Display`     | 指示是否在屏幕上显示中间步骤的标签。`'notify'`（默认值）仅在函数未收敛时显示输出。`'iter'` 显示中间步骤（不适用于 `lsqnonneg`）。请参阅 [优化求解器迭代显示](https://ww2.mathworks.cn/help/matlab/math/iterative-display.html)。`'off'` 或 `'none'` 不显示中间步骤。`'final'` 仅显示最终输出。 | `fminbnd`、`fminsearch`、`fzero`、`lsqnonneg` |
  | `FunValCheck` | 检查目标函数值是否有效。当目标函数或约束返回的值是复数或 `NaN` 时，`'on'` 显示错误。`'off'`（默认值）不显示错误。 | `fminbnd`、`fminsearch`、`fzero`              |
  | `MaxFunEvals` | 允许的最大函数计算次数。对于 `fminbnd`，默认值为 `500`；对于 `fminsearch`，默认值为 `200*length(x0)`。 | `fminbnd`、`fminsearch`                       |
  | `MaxIter`     | 允许的最大迭代次数。对于 `fminbnd`，默认值为 `500`；对于 `fminsearch`，默认值为 `200*length(x0)`。 | `fminbnd`、`fminsearch`                       |
  | `OutputFcn`   | 显示有关求解器的迭代的信息。默认值为 `[]`（无）。请参阅 [优化求解器输出函数](https://ww2.mathworks.cn/help/matlab/math/output-functions.html)。 | `fminbnd`、`fminsearch`、`fzero`              |
  | `PlotFcns`    | 绘制有关求解器的迭代的信息。默认值为 `[]`（无）。有关可用的预定义函数，请参阅[优化求解器绘制函数](https://ww2.mathworks.cn/help/matlab/math/plot-functions.html)。 | `fminbnd`、`fminsearch`、`fzero`              |
  | `TolFun`      | 函数值的终止容差。默认值为 `1.e-4`。请参阅 [容差和终止条件](https://ww2.mathworks.cn/help/matlab/math/setting-options.html#bt00l89-1)。 | `fminsearch`                                  |
  | `TolX`        | *x* 的终止容差。默认值为 `1.e-4`，但以下两个函数除外：`fzero`，其默认值为 `eps` (=`2.2204e-16`)，以及 `lsqnonneg`，其默认值为 `10*eps*norm(c,1)*length(c)`。请参阅 [容差和终止条件](https://ww2.mathworks.cn/help/matlab/math/setting-options.html#bt00l89-1)。 | `fminbnd`、`fminsearch`、`fzero`、`lsqnonneg` |

- 无约束问题

  - jacobian求解雅可比行列式
    - jacobian（f)：默认求解f所有偏导数组成的雅可比行列式
    - jacobian(f,[x,y,z]):求解f对xyz的偏导数组成的行列式
  - solve（f) 求f的驻点
  - subs（f，{x,y},{xx(i),yy(i)}:把f矩阵中的{x,y}项换成xx(i),yy(i)，即代入具体值
  - eig（f）求f矩阵的特征值
  - **是极值点的条件：雅可比矩阵的所有特征值同号
  - syms 符号作为原始初值，如 syms x 把x设为符号变量。

- 无约束极值问题的数值解

  - fminunc
  - 其中：返回值x 是所求得的极小值点，返回值fval 是函数的极小值。fun 是一个M 函数，
    当fun 只有一个返回值时，它的返回值是函数J( x ） ；当fun 有两个返回值时，它的第二个
    返回值是J(x ） 的梯度向量； 当fun 有三个返回值时，它的第三个返回值是J(x ） 的二阶导数阵（ Hessian 阵） 。她是z 的初始值， options 是优化参数，可以使用默认参数。
  - fminsearch

- 匿名函数的定义方法：

  - f = @(x,y,z) expression;
  - @后面括号注明了函数的参数

- 求解零点

  - `r = roots(p)` 以列向量的形式返回 `p` 表示的多项式的根。输入 `p` 是一个包含 `n+1` 多项式系数的向量，以 xn 系数开头。`0` 系数表示方程中不存在的中间幂。例如：`p = [3 2 -2]` 表示多项式 3*x*2+2*x*−2。

    `roots` 函数对 *p*1*x**n*+...+*p**n**x*+*p**n*+1=0 格式的多项式方程求解。包含带有非负指数的单一变量的多项式方程

  - x0=solve(f,x)，**f是符号变量构成的表达式**，求f函数的零点,以x为变量（求解非多项式函数时效果不理想，可能会遗漏解
  - x0=fsolve(f,startpoint) 只能求给定初始值附近的一个零点，**f是匿名函数或函数文件**
  - x=vpa(x0,5) vpa设置精度，表示将x0中的数据转化为保留5位有效数字的的结果

- 二次规划：目标函数是自变量x的二次函数，约束条件全是线性的![image-20210630090528517](C:\Users\Mimas\AppData\Roaming\Typora\typora-user-images\image-20210630090528517.png)

  - [x,fval]=quadprog(H,f,A,b,Aeq,beq,lb,ub,x0,options)
  - 注意二次型前面的1/2

- 罚函数法（序列无约束最小化技术）

- 求解约束最优化问题的函数

  - fminbnd
    - [x,fval]=fminbnd(fun,x1,x2,options)
    - 在[x1,x2]区间求fun的最小值
    - 返回x是极小点
  - fseminf

