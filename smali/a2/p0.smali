.class public final synthetic La2/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:La2/c$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(La2/c$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/p0;->a:La2/c$a;

    iput-object p2, p0, La2/p0;->b:Ljava/lang/String;

    iput-wide p3, p0, La2/p0;->c:J

    iput-wide p5, p0, La2/p0;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, La2/p0;->a:La2/c$a;

    iget-object v1, p0, La2/p0;->b:Ljava/lang/String;

    iget-wide v2, p0, La2/p0;->c:J

    iget-wide v4, p0, La2/p0;->d:J

    move-object v6, p1

    check-cast v6, La2/c;

    invoke-static/range {v0 .. v6}, La2/n1;->v1(La2/c$a;Ljava/lang/String;JJLa2/c;)V

    return-void
.end method