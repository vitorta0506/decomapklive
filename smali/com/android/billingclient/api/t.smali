.class final Lcom/android/billingclient/api/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/android/billingclient/api/e;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/e;Ljava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/e;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/t;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/android/billingclient/api/t;->b:Lcom/android/billingclient/api/e;

    return-void
.end method


# virtual methods
.method final a()Lcom/android/billingclient/api/e;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/t;->b:Lcom/android/billingclient/api/e;

    return-object v0
.end method

.method final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/t;->a:Ljava/util/List;

    return-object v0
.end method
