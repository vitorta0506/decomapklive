.class public final synthetic Lw1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/m0$b;


# instance fields
.field public final synthetic a:Lw1/m0;

.field public final synthetic b:Ln1/o;


# direct methods
.method public synthetic constructor <init>(Lw1/m0;Ln1/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/r;->a:Lw1/m0;

    iput-object p2, p0, Lw1/r;->b:Ln1/o;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw1/r;->a:Lw1/m0;

    iget-object v1, p0, Lw1/r;->b:Ln1/o;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, p1}, Lw1/m0;->t(Lw1/m0;Ln1/o;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
