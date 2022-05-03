// generated by codegen/codegen.py
import codeql.swift.elements.expr.ClosureExpr
import codeql.swift.elements.expr.Expr
import codeql.swift.elements.decl.PatternBindingDecl

class CaptureListExprBase extends @capture_list_expr, Expr {
  override string toString() { result = "CaptureListExpr" }

  PatternBindingDecl getBindingDecl(int index) {
    exists(PatternBindingDecl x |
      capture_list_expr_binding_decls(this, index, x) and
      result = x.resolve()
    )
  }

  PatternBindingDecl getABindingDecl() { result = getBindingDecl(_) }

  int getNumberOfBindingDecls() { result = count(getABindingDecl()) }

  ClosureExpr getClosureBody() {
    exists(ClosureExpr x |
      capture_list_exprs(this, x) and
      result = x.resolve()
    )
  }
}