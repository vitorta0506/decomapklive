.class public final synthetic Lv1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/a$a;


# instance fields
.field public final synthetic a:Lw1/c;


# direct methods
.method public synthetic constructor <init>(Lw1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/n;->a:Lw1/c;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv1/n;->a:Lw1/c;

    invoke-interface {v0}, Lw1/c;->c()Lr1/a;

    move-result-object v0

    return-object v0
.end method
