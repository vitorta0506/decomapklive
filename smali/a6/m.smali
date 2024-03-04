.class public final synthetic La6/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk6/b;


# instance fields
.field public final synthetic a:La6/o;

.field public final synthetic b:La6/d;


# direct methods
.method public synthetic constructor <init>(La6/o;La6/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6/m;->a:La6/o;

    iput-object p2, p0, La6/m;->b:La6/d;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, La6/m;->a:La6/o;

    iget-object v1, p0, La6/m;->b:La6/d;

    invoke-static {v0, v1}, La6/o;->a(La6/o;La6/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
