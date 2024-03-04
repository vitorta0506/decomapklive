.class Lw7/a$a;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw7/a;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/guochao/faceshow/aaspring/beans/GCEventModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lw7/a;


# direct methods
.method constructor <init>(Lw7/a;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lw7/a$a;->a:Lw7/a;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/guochao/faceshow/aaspring/beans/GCEventModel;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->getEvent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x3

    .line 5
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->getRecordTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->getTargetUserId()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 7
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->getTargetUserId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_1
    const/4 v0, 0x5

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->getNum()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;

    invoke-virtual {p0, p1, p2}, Lw7/a$a;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/guochao/faceshow/aaspring/beans/GCEventModel;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `gc_event_model` (`id`,`event`,`recordTime`,`targetUserId`,`num`) VALUES (nullif(?, 0),?,?,?,?)"

    return-object v0
.end method
