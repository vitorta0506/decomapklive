.class public Lcom/guochao/faceshow/utils/SensitiveWordFilterProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/lib_service_center/util/service/ISensitiveWordFilter;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/sensitive_word_filter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->getInstance()Lcom/guochao/faceshow/utils/SensitiveWordFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->checkKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
