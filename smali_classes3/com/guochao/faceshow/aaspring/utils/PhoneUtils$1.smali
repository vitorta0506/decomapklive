.class Lcom/guochao/faceshow/aaspring/utils/PhoneUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->isGoogleEnable(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/a;->m()Lcom/google/android/gms/common/a;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/a;->g(Landroid/content/Context;)I

    move-result p1

    const-string v0, "com.android.vending"

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->checkApkExist(Ljava/lang/String;)Z

    move-result v0

    if-nez p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->access$000()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils$1;->apply(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
