.class Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$OnDoubleTapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->a(Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->a(Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->q()V

    :cond_0
    return-void
.end method
