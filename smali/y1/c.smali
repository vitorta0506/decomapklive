.class public final Ly1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly1/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq1/b<",
        "Ly1/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ly1/c;
    .locals 1

    invoke-static {}, Ly1/c$a;->a()Ly1/c;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ly1/a;
    .locals 2

    invoke-static {}, Ly1/b;->a()Ly1/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lq1/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/a;

    return-object v0
.end method


# virtual methods
.method public c()Ly1/a;
    .locals 1

    invoke-static {}, Ly1/c;->b()Ly1/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ly1/c;->c()Ly1/a;

    move-result-object v0

    return-object v0
.end method
