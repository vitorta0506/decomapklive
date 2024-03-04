.class public final Lcom/google/api/client/util/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/x$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/api/client/util/x$b;
    .locals 1

    new-instance v0, Lcom/google/api/client/util/x$b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/api/client/util/x$b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
