.class public Lcom/google/android/gms/common/api/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/c$a$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/google/android/gms/common/api/c$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field public final a:Lv3/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/os/Looper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/c$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/c$a$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c$a$a;->a()Lcom/google/android/gms/common/api/c$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/c$a;->c:Lcom/google/android/gms/common/api/c$a;

    return-void
.end method

.method private constructor <init>(Lv3/k;Landroid/accounts/Account;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/c$a;->a:Lv3/k;

    iput-object p3, p0, Lcom/google/android/gms/common/api/c$a;->b:Landroid/os/Looper;

    return-void
.end method

.method synthetic constructor <init>(Lv3/k;Landroid/accounts/Account;Landroid/os/Looper;Lcom/google/android/gms/common/api/l;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/c$a;-><init>(Lv3/k;Landroid/accounts/Account;Landroid/os/Looper;)V

    return-void
.end method
