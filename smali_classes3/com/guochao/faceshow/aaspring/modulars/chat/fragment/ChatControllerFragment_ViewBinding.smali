.class public Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    const v0, 0x7f0a03b5

    const-string v1, "field \'mViewExtra\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mViewExtra:Landroid/view/View;

    .line 4
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a054f

    const-string v2, "field \'mEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mEditText:Landroid/widget/EditText;

    const v0, 0x7f0a03b9

    const-string v1, "field \'mFaceButton\' and method \'onButtonClick\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mFaceButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mFaceButton:Landroid/widget/ImageView;

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->c:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0481

    const-string v1, "field \'mGiftButton\' and method \'onButtonClick\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 10
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mGiftButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mGiftButton:Landroid/widget/ImageView;

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->d:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0884

    const-string v1, "field \'mImageButton\' and method \'onButtonClick\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 14
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mImageButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mImageButton:Landroid/widget/ImageView;

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->e:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01ae

    const-string v1, "field \'mCameraButton\' and method \'onButtonClick\'"

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 18
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mCameraButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mCameraButton:Landroid/widget/ImageView;

    .line 19
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->f:Landroid/view/View;

    .line 20
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0e87

    const-string v1, "field \'mVoiceButton\' and method \'onButtonClick\'"

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 22
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mVoiceButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mVoiceButton:Landroid/widget/ImageView;

    .line 23
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->g:Landroid/view/View;

    .line 24
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a019a

    const-string v1, "field \'mSendButton\', method \'onButtonClick\', and method \'send\'"

    .line 25
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 26
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mSendButton:Landroid/view/View;

    .line 27
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->h:Landroid/view/View;

    .line 28
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding$f;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0de4

    const-string v1, "field \'ivVideo\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->ivVideo:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mViewExtra:Landroid/view/View;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mEditText:Landroid/widget/EditText;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mFaceButton:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mGiftButton:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mImageButton:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mCameraButton:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mVoiceButton:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mSendButton:Landroid/view/View;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->ivVideo:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->c:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->d:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->e:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->f:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->g:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment_ViewBinding;->h:Landroid/view/View;

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
