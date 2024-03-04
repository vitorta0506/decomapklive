.class Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/mine/view/MultilingualActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/aaspring/utils/Language$SupportedLanguage;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;->b:Ljava/lang/String;

    return-void
.end method
