using System;
using System.Runtime.InteropServices;
using System.Runtime.CompilerServices;

public class Parameters
{
    public void M1(int a, object b, string c) => throw null;
    public void M2(int a, object b = null, string c = "default string") => throw null;
    public void M3(int a = 1, object b = null, string c = "null") => throw null;
    public void M4(int a = default, object b = default) => throw null;
    public void M5(int a = new int(), object b = default) => throw null;
    public void M6(MyStruct s1, MyStruct s2 = default(MyStruct), MyStruct s3 = new MyStruct()) => throw null;
    public void M7(MyEnum e1, MyEnum e2 = default(MyEnum), MyEnum e3 = new MyEnum(), MyEnum e4 = MyEnum.A, MyEnum e5 = (MyEnum)5) => throw null;

    public void M8<T>(T t = default) => throw null;
    public void M9<T>(T t = default) where T : struct => throw null;
    public void M10<T>(T t = default) where T : class => throw null;

    public void M11(int arg1 = 3) => throw null;
    public void M12(DateTime arg2 = default) => throw null;
    public void M13(DateTime? arg3 = null) => throw null;
    public void M14([Optional, DateTimeConstant(14L)] DateTime arg4) => throw null;
    public void M15([Optional, DateTimeConstant(10001L)] DateTime? arg5) => throw null;
    public void M16([Optional, DefaultParameterValue(6L)] long arg6) => throw null;
    public void M17([Optional, DefaultParameterValue(null)] object arg7) => throw null;
    public void M18([Optional, DefaultParameterValue(3)] int? arg8) => throw null;
    public void M19([Optional, DecimalConstant(1, 0, 0, 0, 103)] decimal arg9) => throw null;

    public struct MyStruct { }
    public enum MyEnum { A = 1, B = 2 }
}