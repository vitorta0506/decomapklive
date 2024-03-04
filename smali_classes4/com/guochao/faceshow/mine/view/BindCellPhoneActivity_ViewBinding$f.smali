.class Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$f;
.super Lbutterknife/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

.field final synthetic b:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$f;->b:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$f;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-direct {p0}, Lbutterknife/internal/b;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$f;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
