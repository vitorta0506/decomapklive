.class Lcom/guochao/faceshow/aaspring/db/b$a;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/db/b;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/db/b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/db/b;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/db/b$a;->a:Lcom/guochao/faceshow/aaspring/db/b;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/guochao/faceshow/aaspring/db/GroupInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getSortNum()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getSortNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getMemberNum()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getMemberNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 11
    :goto_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->isSelect()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->isSelect()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_3
    const/4 v0, 0x5

    if-nez p2, :cond_4

    .line 12
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 13
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_4
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/db/b$a;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/guochao/faceshow/aaspring/db/GroupInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `friendGroup` (`id`,`name`,`sortNum`,`memberNum`,`isSelect`) VALUES (?,?,?,?,?)"

    return-object v0
.end method
