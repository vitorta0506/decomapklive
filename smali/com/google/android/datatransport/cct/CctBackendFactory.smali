.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/c;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lo1/f;)Lo1/k;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/d;

    .line 2
    invoke-virtual {p1}, Lo1/f;->b()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lo1/f;->e()Ly1/a;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lo1/f;->d()Ly1/a;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/datatransport/cct/d;-><init>(Landroid/content/Context;Ly1/a;Ly1/a;)V

    return-object v0
.end method
