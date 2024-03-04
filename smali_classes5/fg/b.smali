.class public final Lfg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfg/b$b;
    }
.end annotation


# direct methods
.method public static a()Lio/grpc/e;
    .locals 1

    invoke-static {}, Lfg/b;->b()Lfg/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lfg/b$b;->a()Lio/grpc/e;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lfg/b$b;
    .locals 2

    new-instance v0, Lfg/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfg/b$b;-><init>(Lfg/b$a;)V

    return-object v0
.end method
