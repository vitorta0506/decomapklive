.class abstract Leh/p2$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/p2$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Leh/p2$c;
.end method

.method protected abstract b(I)Leh/p2$c$a;
.end method

.method protected abstract c(Leh/p2$c$b;)Leh/p2$c$a;
.end method

.method protected abstract d(Ljava/lang/String;)Leh/p2$c$a;
.end method

.method protected abstract e(Ljava/lang/String;)Leh/p2$c$a;
.end method

.method protected abstract f(Leh/p2$c$c;)Leh/p2$c$a;
.end method

.method g(I)Leh/p2$c$a;
    .locals 1

    sget-object v0, Leh/p2$c$c;->c:Leh/p2$c$c;

    invoke-virtual {p0, v0}, Leh/p2$c$a;->f(Leh/p2$c$c;)Leh/p2$c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Leh/p2$c$a;->b(I)Leh/p2$c$a;

    move-result-object p1

    return-object p1
.end method

.method protected abstract h(Leh/j0$d;)Leh/p2$c$a;
.end method

.method protected abstract i(Ljava/lang/Long;)Leh/p2$c$a;
.end method

.method protected abstract j(J)Leh/p2$c$a;
.end method

.method protected abstract k(J)Leh/p2$c$a;
.end method

.method protected abstract l(Ljava/util/List;)Leh/p2$c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Leh/p2$c$a;"
        }
    .end annotation
.end method

.method m(JJ)Leh/p2$c$a;
    .locals 1

    sget-object v0, Leh/p2$c$c;->b:Leh/p2$c$c;

    invoke-virtual {p0, v0}, Leh/p2$c$a;->f(Leh/p2$c$c;)Leh/p2$c$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Leh/p2$c$a;->k(J)Leh/p2$c$a;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Leh/p2$c$a;->j(J)Leh/p2$c$a;

    move-result-object p1

    return-object p1
.end method

.method n()Leh/p2$c$a;
    .locals 1

    sget-object v0, Leh/p2$c$c;->a:Leh/p2$c$c;

    invoke-virtual {p0, v0}, Leh/p2$c$a;->f(Leh/p2$c$c;)Leh/p2$c$a;

    move-result-object v0

    return-object v0
.end method

.method protected abstract o(Leh/i1;)Leh/p2$c$a;
.end method
