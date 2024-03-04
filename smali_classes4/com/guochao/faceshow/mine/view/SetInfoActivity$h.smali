.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity;->S1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$h;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f0a092a

    if-eq p2, p1, :cond_1

    const p1, 0x7f0a092d

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$h;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const-string p2, "Lb"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->p0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$h;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const-string p2, "Kg"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->p0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method
