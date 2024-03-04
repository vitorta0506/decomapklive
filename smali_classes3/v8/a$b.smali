.class Lv8/a$b;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv8/a;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lv8/a;


# direct methods
.method constructor <init>(Lv8/a;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lv8/a$b;->a:Lv8/a;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;->getOrderId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;->getOrderId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;

    invoke-virtual {p0, p1, p2}, Lv8/a$b;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `google_pay_request_model_record` WHERE `orderId` = ?"

    return-object v0
.end method
