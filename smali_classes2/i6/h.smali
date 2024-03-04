.class public Li6/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()La6/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La6/d<",
            "*>;"
        }
    .end annotation

    new-instance v0, Li6/h$a;

    invoke-direct {v0}, Li6/h$a;-><init>()V

    const-class v1, Li6/g;

    invoke-static {v0, v1}, La6/d;->j(Ljava/lang/Object;Ljava/lang/Class;)La6/d;

    move-result-object v0

    return-object v0
.end method
