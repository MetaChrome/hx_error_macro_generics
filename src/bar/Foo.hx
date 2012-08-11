package bar;
import haxe.macro.Expr;
import bar2.Main;
class Foo<T:Main> {
    public function new() {
    }
    public function test():Void {
        #if !macro
        defaults_get();
        #end
    }
    @:macro public function defaults_get(ethis:Expr):Expr {
        return macro $ethis;
    }
}