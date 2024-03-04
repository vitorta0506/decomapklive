.class public Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;->b:Z

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;->b:Z

    if-nez v1, :cond_4

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_4

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5
    check-cast v0, Landroid/text/Spannable;

    const/4 v2, 0x0

    .line 6
    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    if-eqz v0, :cond_3

    .line 7
    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;->a:J

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    return v1

    .line 12
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 13
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setLinkIsResponseLongClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;->b:Z

    return-void
.end method
