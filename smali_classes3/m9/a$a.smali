.class Lm9/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm9/a;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lm9/a;


# direct methods
.method constructor <init>(Lm9/a;)V
    .locals 0

    iput-object p1, p0, Lm9/a$a;->a:Lm9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm9/a$a;->a:Lm9/a;

    invoke-static {v0}, Lm9/a;->o(Lm9/a;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lm9/a$a;->a:Lm9/a;

    invoke-static {v0}, Lm9/a;->p(Lm9/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    :cond_0
    return-void
.end method
