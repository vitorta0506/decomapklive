.class public Lio/grpc/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/j$b;
    }
.end annotation


# static fields
.field private static final a:Lio/grpc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/g<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/j$a;

    invoke-direct {v0}, Lio/grpc/j$a;-><init>()V

    sput-object v0, Lio/grpc/j;->a:Lio/grpc/g;

    return-void
.end method

.method public static a(Lio/grpc/d;Ljava/util/List;)Lio/grpc/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/d;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/h;",
            ">;)",
            "Lio/grpc/d;"
        }
    .end annotation

    const-string v0, "channel"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/h;

    .line 3
    new-instance v1, Lio/grpc/j$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lio/grpc/j$b;-><init>(Lio/grpc/d;Lio/grpc/h;Lio/grpc/i;)V

    move-object p0, v1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static varargs b(Lio/grpc/d;[Lio/grpc/h;)Lio/grpc/d;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lio/grpc/j;->a(Lio/grpc/d;Ljava/util/List;)Lio/grpc/d;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lio/grpc/d;Ljava/util/List;)Lio/grpc/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/d;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/h;",
            ">;)",
            "Lio/grpc/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 3
    invoke-static {p0, v0}, Lio/grpc/j;->a(Lio/grpc/d;Ljava/util/List;)Lio/grpc/d;

    move-result-object p0

    return-object p0
.end method
