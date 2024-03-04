.class public final synthetic Lw1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/m0$b;


# instance fields
.field public final synthetic a:Lw1/m0;

.field public final synthetic b:Ln1/i;

.field public final synthetic c:Ln1/o;


# direct methods
.method public synthetic constructor <init>(Lw1/m0;Ln1/i;Ln1/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/p;->a:Lw1/m0;

    iput-object p2, p0, Lw1/p;->b:Ln1/i;

    iput-object p3, p0, Lw1/p;->c:Ln1/o;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lw1/p;->a:Lw1/m0;

    iget-object v1, p0, Lw1/p;->b:Ln1/i;

    iget-object v2, p0, Lw1/p;->c:Ln1/o;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lw1/m0;->K(Lw1/m0;Ln1/i;Ln1/o;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
