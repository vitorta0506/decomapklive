.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;->onNext(Lte/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->gotoSetting(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
