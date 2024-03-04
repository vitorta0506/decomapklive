.class abstract Lcom/google/android/gms/internal/auth/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lsun/misc/Unsafe;


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/g0;->a:Lsun/misc/Unsafe;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/g0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Class;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/g0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/reflect/Field;)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/g0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method
