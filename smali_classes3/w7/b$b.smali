.class Lw7/b$b;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw7/b;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw7/b;


# direct methods
.method constructor <init>(Lw7/b;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lw7/b$b;->a:Lw7/b;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM system_conversation"

    return-object v0
.end method
