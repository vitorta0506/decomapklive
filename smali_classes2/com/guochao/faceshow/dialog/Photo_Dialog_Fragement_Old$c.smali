.class Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$c;
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

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$c;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$c;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    invoke-virtual {p1}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->T1()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$c;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    invoke-static {p1}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->Q1(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$c;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    invoke-static {p1}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->R1(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old$c;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;

    invoke-static {p1}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;->S1(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragement_Old;)V

    :cond_1
    :goto_0
    return-void
.end method
