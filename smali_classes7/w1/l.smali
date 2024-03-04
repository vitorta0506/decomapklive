.class public final synthetic Lw1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/m0$b;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lw1/l;->a:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lw1/l;->a:J

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, p1}, Lw1/m0;->i(JLandroid/database/Cursor;)Lr1/e;

    move-result-object p1

    return-object p1
.end method
