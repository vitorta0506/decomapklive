.class Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$b;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$b;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->U1(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$b;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v0, 0x33

    iget-object v1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$b;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    invoke-static {v1}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->P1(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->cameraMethod(Landroid/app/Activity;ILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$b;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method
