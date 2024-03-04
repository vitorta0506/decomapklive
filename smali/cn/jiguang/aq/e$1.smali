.class final Lcn/jiguang/aq/e$1;
.super Lcn/jiguang/o/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jiguang/aq/e;->a(Landroid/content/Context;Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/aq/e$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/jiguang/aq/e$1;->c:Landroid/os/Bundle;

    iput p3, p0, Lcn/jiguang/aq/e$1;->d:I

    invoke-direct {p0}, Lcn/jiguang/o/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcn/jiguang/aq/e$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/jiguang/aq/e$1;->c:Landroid/os/Bundle;

    iget v2, p0, Lcn/jiguang/aq/e$1;->d:I

    invoke-static {v0, v1, v2}, Lcn/jiguang/aq/e;->b(Landroid/content/Context;Landroid/os/Bundle;I)V

    return-void
.end method
