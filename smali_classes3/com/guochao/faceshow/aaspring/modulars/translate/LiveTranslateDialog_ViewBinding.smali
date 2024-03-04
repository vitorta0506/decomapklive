.class public Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cc7

    const-string v2, "field \'tvNickName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->tvNickName:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c63

    const-string v2, "field \'tvContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->tvContent:Landroid/widget/TextView;

    const v0, 0x7f0a0beb

    const-string v1, "field \'translateBtn\' and method \'onViewClicked\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'translateBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->translateBtn:Landroid/widget/ImageView;

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->c:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0bf0

    const-string v2, "field \'translateLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->translateLoading:Landroid/widget/ImageView;

    const v0, 0x7f0a00e4

    const-string v1, "field \'atPerson\' and method \'onViewClicked\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 11
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'atPerson\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->atPerson:Landroid/widget/ImageView;

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->d:Landroid/view/View;

    .line 13
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0186

    const-string v1, "field \'btnConfirm\' and method \'onViewClicked\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 15
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'btnConfirm\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->btnConfirm:Landroid/widget/TextView;

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->e:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0ab2

    const-string v1, "field \'someOneLay\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->someOneLay:Landroid/view/View;

    .line 19
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06f8

    const-string v2, "field \'llTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->llTip:Landroid/widget/LinearLayout;

    const v0, 0x7f0a06d4

    const-string v1, "field \'llGuide\' and method \'onViewClicked\'"

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 21
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llGuide\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->llGuide:Landroid/widget/LinearLayout;

    .line 22
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->f:Landroid/view/View;

    .line 23
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const-class v0, Lcom/opensource/svgaplayer/SVGAImageView;

    const v1, 0x7f0a0af3

    const-string v2, "field \'svgaImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    const v0, 0x7f0a0597

    const-string v1, "method \'onViewClicked\'"

    .line 25
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->g:Landroid/view/View;

    .line 27
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->tvNickName:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->tvContent:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->translateBtn:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->translateLoading:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->atPerson:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->btnConfirm:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->someOneLay:Landroid/view/View;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->llTip:Landroid/widget/LinearLayout;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->llGuide:Landroid/widget/LinearLayout;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->c:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->d:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->e:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->f:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog_ViewBinding;->g:Landroid/view/View;

    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
