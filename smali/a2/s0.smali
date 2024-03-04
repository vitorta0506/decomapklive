.class public final synthetic La2/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:La2/c$a;

.field public final synthetic b:Lv2/j;

.field public final synthetic c:Lv2/m;


# direct methods
.method public synthetic constructor <init>(La2/c$a;Lv2/j;Lv2/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/s0;->a:La2/c$a;

    iput-object p2, p0, La2/s0;->b:Lv2/j;

    iput-object p3, p0, La2/s0;->c:Lv2/m;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, La2/s0;->a:La2/c$a;

    iget-object v1, p0, La2/s0;->b:Lv2/j;

    iget-object v2, p0, La2/s0;->c:Lv2/m;

    check-cast p1, La2/c;

    invoke-static {v0, v1, v2, p1}, La2/n1;->H0(La2/c$a;Lv2/j;Lv2/m;La2/c;)V

    return-void
.end method
