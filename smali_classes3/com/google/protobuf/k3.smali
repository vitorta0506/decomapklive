.class Lcom/google/protobuf/k3;
.super Lcom/google/protobuf/g3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/g3<",
        "Lcom/google/protobuf/h3;",
        "Lcom/google/protobuf/h3$b;",
        ">;"
    }
.end annotation


# virtual methods
.method A(Ljava/lang/Object;)Lcom/google/protobuf/h3;
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p1
.end method

.method B(Lcom/google/protobuf/h3;)I
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result p1

    return p1
.end method

.method C(Lcom/google/protobuf/h3;)I
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/h3;->g()I

    move-result p1

    return p1
.end method

.method D(Lcom/google/protobuf/h3;Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3;
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/h3;->l()Lcom/google/protobuf/h3$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/h3$b;->p(Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    return-object p1
.end method

.method E()Lcom/google/protobuf/h3$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    return-object v0
.end method

.method F(Ljava/lang/Object;Lcom/google/protobuf/h3$b;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3;

    invoke-virtual {p2}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-void
.end method

.method G(Ljava/lang/Object;Lcom/google/protobuf/h3;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3;

    iput-object p2, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-void
.end method

.method H(Lcom/google/protobuf/h3$b;)Lcom/google/protobuf/h3;
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    return-object p1
.end method

.method I(Lcom/google/protobuf/h3;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/protobuf/h3;->n(Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method J(Lcom/google/protobuf/h3;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/protobuf/h3;->o(Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;II)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/h3$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/k3;->u(Lcom/google/protobuf/h3$b;II)V

    return-void
.end method

.method bridge synthetic b(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/h3$b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/k3;->v(Lcom/google/protobuf/h3$b;IJ)V

    return-void
.end method

.method bridge synthetic c(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/h3$b;

    check-cast p3, Lcom/google/protobuf/h3;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/k3;->w(Lcom/google/protobuf/h3$b;ILcom/google/protobuf/h3;)V

    return-void
.end method

.method bridge synthetic d(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/h3$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/k3;->x(Lcom/google/protobuf/h3$b;ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method bridge synthetic e(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/h3$b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/k3;->y(Lcom/google/protobuf/h3$b;IJ)V

    return-void
.end method

.method bridge synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k3;->z(Ljava/lang/Object;)Lcom/google/protobuf/h3$b;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k3;->A(Ljava/lang/Object;)Lcom/google/protobuf/h3;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic h(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/h3;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k3;->B(Lcom/google/protobuf/h3;)I

    move-result p1

    return p1
.end method

.method bridge synthetic i(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/h3;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k3;->C(Lcom/google/protobuf/h3;)I

    move-result p1

    return p1
.end method

.method j(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method bridge synthetic k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/protobuf/h3;

    check-cast p2, Lcom/google/protobuf/h3;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/k3;->D(Lcom/google/protobuf/h3;Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic n()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/k3;->E()Lcom/google/protobuf/h3$b;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic o(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/protobuf/h3$b;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/k3;->F(Ljava/lang/Object;Lcom/google/protobuf/h3$b;)V

    return-void
.end method

.method bridge synthetic p(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/protobuf/h3;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/k3;->G(Ljava/lang/Object;Lcom/google/protobuf/h3;)V

    return-void
.end method

.method q(Lcom/google/protobuf/k2;)Z
    .locals 0

    invoke-interface {p1}, Lcom/google/protobuf/k2;->J()Z

    move-result p1

    return p1
.end method

.method bridge synthetic r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/protobuf/h3$b;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k3;->H(Lcom/google/protobuf/h3$b;)Lcom/google/protobuf/h3;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic s(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/h3;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/k3;->I(Lcom/google/protobuf/h3;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method bridge synthetic t(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/h3;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/k3;->J(Lcom/google/protobuf/h3;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method u(Lcom/google/protobuf/h3$b;II)V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h3$c;->t()Lcom/google/protobuf/h3$c$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/protobuf/h3$c$a;->b(I)Lcom/google/protobuf/h3$c$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/h3$c$a;->g()Lcom/google/protobuf/h3$c;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/h3$b;->j(ILcom/google/protobuf/h3$c;)Lcom/google/protobuf/h3$b;

    return-void
.end method

.method v(Lcom/google/protobuf/h3$b;IJ)V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h3$c;->t()Lcom/google/protobuf/h3$c$a;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/protobuf/h3$c$a;->c(J)Lcom/google/protobuf/h3$c$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/h3$c$a;->g()Lcom/google/protobuf/h3$c;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/h3$b;->j(ILcom/google/protobuf/h3$c;)Lcom/google/protobuf/h3$b;

    return-void
.end method

.method w(Lcom/google/protobuf/h3$b;ILcom/google/protobuf/h3;)V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h3$c;->t()Lcom/google/protobuf/h3$c$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/protobuf/h3$c$a;->d(Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3$c$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/h3$c$a;->g()Lcom/google/protobuf/h3$c;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/h3$b;->j(ILcom/google/protobuf/h3$c;)Lcom/google/protobuf/h3$b;

    return-void
.end method

.method x(Lcom/google/protobuf/h3$b;ILcom/google/protobuf/ByteString;)V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h3$c;->t()Lcom/google/protobuf/h3$c$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/protobuf/h3$c$a;->e(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/h3$c$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/h3$c$a;->g()Lcom/google/protobuf/h3$c;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/h3$b;->j(ILcom/google/protobuf/h3$c;)Lcom/google/protobuf/h3$b;

    return-void
.end method

.method y(Lcom/google/protobuf/h3$b;IJ)V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h3$c;->t()Lcom/google/protobuf/h3$c$a;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/protobuf/h3$c$a;->f(J)Lcom/google/protobuf/h3$c$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/h3$c$a;->g()Lcom/google/protobuf/h3$c;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/h3$b;->j(ILcom/google/protobuf/h3$c;)Lcom/google/protobuf/h3$b;

    return-void
.end method

.method z(Ljava/lang/Object;)Lcom/google/protobuf/h3$b;
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {p1}, Lcom/google/protobuf/h3;->l()Lcom/google/protobuf/h3$b;

    move-result-object p1

    return-object p1
.end method
