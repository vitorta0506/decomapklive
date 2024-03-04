.class Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->R1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/AnimationDrawable;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$c;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$c;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$c;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->translateBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$c;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->translateLoading:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$c;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$c;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->translateBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$c;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->P1(Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;)Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setTranslateContent(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$c;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->tvContent:Landroid/widget/TextView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$c;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->translateBtn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    return-void
.end method
