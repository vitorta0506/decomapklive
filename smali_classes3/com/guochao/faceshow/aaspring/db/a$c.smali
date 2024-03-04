.class Lcom/guochao/faceshow/aaspring/db/a$c;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/db/a;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/db/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/db/a;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a$c;->a:Lcom/guochao/faceshow/aaspring/db/a;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/guochao/faceshow/aaspring/db/FriendInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getFriendId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getFriendId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getGroupId()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 5
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getHeadImg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getHeadImg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 11
    :goto_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 12
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 14
    :goto_3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getOnlineStatue()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 15
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getOnlineStatue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 17
    :goto_4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getOnlineTime()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 18
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 19
    :cond_5
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getOnlineTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 20
    :goto_5
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getSendGiftNum()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 21
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 22
    :cond_6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getSendGiftNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 23
    :goto_6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getCountryFlag()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_7

    .line 24
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    .line 25
    :cond_7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getCountryFlag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 26
    :goto_7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getFriendId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_8

    .line 27
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    .line 28
    :cond_8
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getFriendId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_8
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/db/a$c;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/guochao/faceshow/aaspring/db/FriendInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `friend` SET `friendId` = ?,`groupId` = ?,`nickName` = ?,`headImg` = ?,`signature` = ?,`onlineStatue` = ?,`onlineTime` = ?,`sendGiftNum` = ?,`countryFlag` = ? WHERE `friendId` = ?"

    return-object v0
.end method
