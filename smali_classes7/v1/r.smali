.class public final synthetic Lv1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/a$a;


# instance fields
.field public final synthetic a:Lv1/s;


# direct methods
.method public synthetic constructor <init>(Lv1/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/r;->a:Lv1/s;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv1/r;->a:Lv1/s;

    invoke-static {v0}, Lv1/s;->a(Lv1/s;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
