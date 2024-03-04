.class public Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;

.field private b:Landroid/text/Spannable;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->c:Z

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->init()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->c:Z

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->init()V

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->a:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->a:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;

    :cond_0
    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->c:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->c:Z

    return v0
.end method

.method public getTopicAndAtTextHelper()Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->b()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->a:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->b()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->a:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->replaceText(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->b:Landroid/text/Spannable;

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
