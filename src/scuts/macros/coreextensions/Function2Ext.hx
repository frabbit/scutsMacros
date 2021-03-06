package scuts.macros.coreextensions;

#if macro
import haxe.macro.Expr;
import scuts.macros.builder.PartialApplication;
#end

class Function2s 
{

  @:macro public static function _<A,B,C>(f:ExprRequire<A->B->C>, a:ExprRequire<A>, b:ExprRequire<B>) 
  {
    return PartialApplication.apply([f,a,b]);
  }
  
}