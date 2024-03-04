.class public final Lv2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/f$a;
    }
.end annotation


# instance fields
.field private final a:Lv2/f$a;

.field private b:Lj3/i$a;

.field private c:J

.field private d:J

.field private e:J

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc2/r;)V
    .locals 1

    .line 1
    new-instance v0, Lj3/p$a;

    invoke-direct {v0, p1}, Lj3/p$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lv2/f;-><init>(Lj3/i$a;Lc2/r;)V

    return-void
.end method

.method public constructor <init>(Lj3/i$a;Lc2/r;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lv2/f;->b:Lj3/i$a;

    .line 4
    new-instance v0, Lv2/f$a;

    invoke-direct {v0, p2}, Lv2/f$a;-><init>(Lc2/r;)V

    iput-object v0, p0, Lv2/f;->a:Lv2/f$a;

    .line 5
    invoke-virtual {v0, p1}, Lv2/f$a;->a(Lj3/i$a;)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide p1, p0, Lv2/f;->c:J

    .line 7
    iput-wide p1, p0, Lv2/f;->d:J

    .line 8
    iput-wide p1, p0, Lv2/f;->e:J

    const p1, -0x800001

    .line 9
    iput p1, p0, Lv2/f;->f:F

    .line 10
    iput p1, p0, Lv2/f;->g:F

    return-void
.end method
