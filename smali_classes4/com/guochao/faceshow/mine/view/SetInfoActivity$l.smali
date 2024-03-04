.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity;->L1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/JudgeEditText;

.field final synthetic b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/views/JudgeEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l;->a:Lcom/guochao/faceshow/views/JudgeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    const p1, 0x7f0a092a

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p2, p1, :cond_1

    const p1, 0x7f0a092d

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const-string p2, "FT"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->t0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l;->a:Lcom/guochao/faceshow/views/JudgeEditText;

    const/4 p2, 0x5

    invoke-virtual {p1, v1, v0, p2}, Lcom/guochao/faceshow/views/JudgeEditText;->b(III)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const-string p2, "CM"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->t0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l;->a:Lcom/guochao/faceshow/views/JudgeEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\."

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5
    array-length p2, p1

    const/4 v2, 0x0

    if-le p2, v0, :cond_2

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l;->a:Lcom/guochao/faceshow/views/JudgeEditText;

    aget-object p1, p1, v2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$l;->a:Lcom/guochao/faceshow/views/JudgeEditText;

    invoke-virtual {p1, v1, v2, v1}, Lcom/guochao/faceshow/views/JudgeEditText;->b(III)V

    :goto_0
    return-void
.end method
