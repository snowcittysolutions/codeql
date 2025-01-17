// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.Expr
import codeql.swift.elements.type.TypeRepr

module Generated {
  class TypeExpr extends Synth::TTypeExpr, Expr {
    override string getAPrimaryQlClass() { result = "TypeExpr" }

    /**
     * Gets the type representation of this type expression, if it exists.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    TypeRepr getImmediateTypeRepr() {
      result =
        Synth::convertTypeReprFromRaw(Synth::convertTypeExprToRaw(this)
              .(Raw::TypeExpr)
              .getTypeRepr())
    }

    /**
     * Gets the type representation of this type expression, if it exists.
     */
    final TypeRepr getTypeRepr() {
      exists(TypeRepr immediate |
        immediate = this.getImmediateTypeRepr() and
        if exists(this.getResolveStep()) then result = immediate else result = immediate.resolve()
      )
    }

    /**
     * Holds if `getTypeRepr()` exists.
     */
    final predicate hasTypeRepr() { exists(this.getTypeRepr()) }
  }
}
