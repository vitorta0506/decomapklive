.class Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$a;
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

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$a;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$a;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
