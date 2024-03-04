.class public final synthetic La5/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/o;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, La5/o;->a:Landroid/content/Context;

    sget v1, La5/a;->f:I

    .line 1
    :try_start_0
    invoke-static {v0}, Lb5/o;->g(Landroid/content/Context;)Lb5/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lx4/d;->c(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "SplitCompat"

    const-string v1, "Failed to set broadcast receiver to always on."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
