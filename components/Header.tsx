import { UserButton } from '@clerk/nextjs'
import React from 'react'

function Header() {
  return (
    <header className=' h-16 border-b w-full flex justify-between items-center px-10'>
        <h1 className=' font-semibold'>ACM Forms</h1>
        <UserButton />
    </header>
  )
}

export default Header
