.class final Lcom/google/common/util/concurrent/c$a;
.super Lcom/google/common/util/concurrent/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/c<",
        "TI;TO;",
        "Lcom/google/common/base/h<",
        "-TI;+TO;>;TO;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/d0;Lcom/google/common/base/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/d0<",
            "+TI;>;",
            "Lcom/google/common/base/h<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/c;-><init>(Lcom/google/common/util/concurrent/d0;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic W(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/google/common/base/h;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/c$a;->Y(Lcom/google/common/base/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method X(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/a;->R(Ljava/lang/Object;)Z

    return-void
.end method

.method Y(Lcom/google/common/base/h;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/h<",
            "-TI;+TO;>;TI;)TO;"
        }
    .end annotation

    invoke-interface {p1, p2}, Lcom/google/common/base/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
