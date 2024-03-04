.class public abstract Lo1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ly1/a;Ly1/a;Ljava/lang/String;)Lo1/f;
    .locals 1

    new-instance v0, Lo1/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lo1/b;-><init>(Landroid/content/Context;Ly1/a;Ly1/a;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Landroid/content/Context;
.end method

.method public abstract c()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract d()Ly1/a;
.end method

.method public abstract e()Ly1/a;
.end method
