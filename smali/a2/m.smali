.class public final synthetic La2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:La2/c$a;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(La2/c$a;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/m;->a:La2/c$a;

    iput-wide p2, p0, La2/m;->b:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, La2/m;->a:La2/c$a;

    iget-wide v1, p0, La2/m;->b:J

    check-cast p1, La2/c;

    invoke-static {v0, v1, v2, p1}, La2/n1;->p1(La2/c$a;JLa2/c;)V

    return-void
.end method
