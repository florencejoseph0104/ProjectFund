;; Fixed map definition syntax - use curly braces for tuples instead of parentheses
(define-map projects
  {id: uint}
  {creator: principal,
   goal: uint,
   deadline: uint,
   funds-raised: uint,
   is-active: bool}
)

(define-map contributions
  {project-id: uint, supporter: principal}
  {amount: uint, refunded: bool}
)
