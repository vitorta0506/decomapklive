.class public final synthetic La2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:La2/c$a;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(La2/c$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/i;->a:La2/c$a;

    iput p2, p0, La2/i;->b:I

    iput-wide p3, p0, La2/i;->c:J

    iput-wide p5, p0, La2/i;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, La2/i;->a:La2/c$a;

    iget v1, p0, La2/i;->b:I

    iget-wide v2, p0, La2/i;->c:J

    iget-wide v4, p0, La2/i;->d:J

    move-object v6, p1

    check-cast v6, La2/c;

    invoke-static/range {v0 .. v6}, La2/n1;->Q0(La2/c$a;IJJLa2/c;)V

    return-void
.end method
