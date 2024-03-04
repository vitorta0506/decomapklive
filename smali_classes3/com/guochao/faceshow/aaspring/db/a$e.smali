.class Lcom/guochao/faceshow/aaspring/db/a$e;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/db/a;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/db/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/db/a;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/db/a$e;->a:Lcom/guochao/faceshow/aaspring/db/a;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE friend SET groupId = ? WHERE groupId =?"

    return-object v0
.end method
