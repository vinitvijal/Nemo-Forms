import { Button } from "@/components/ui/button";
import Link from "next/link";

export default function Home() {
  return (
    <div className=" h-[calc(100vh-64px)] bg-zinc-200/60 w-full p-20" >
      <div className="flex flex-col items-center justify-center">
        <h1 className="text-4xl font-semibold">ACM Forms</h1>
        <p className="text-lg text-center">Welcome to ACM Forms, a place where you can fill out forms for ACM events</p>
        <Button className="mt-10"><Link href={'/new'}>Get Started</Link></Button>
      </div>

      <div className="flex flex-col items-center justify-center mt-20">
        <h2 className="text-2xl font-semibold">Upcoming Events</h2>
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-10 mt-10">
          <div className="bg-white rounded-lg p-5 shadow-md">
            <h3 className="text-lg font-semibold">Event 1</h3>
            <p className="text-sm text-gray-500">Description</p>
            <Button className="mt-5">Register</Button>
          </div>
          <div className="bg-white rounded-lg p-5 shadow-md">
            <h3 className="text-lg font-semibold">Event 2</h3>
            <p className="text-sm text-gray-500">Description</p>
            <Button className="mt-5">Register</Button>
          </div>
          <div className="bg-white rounded-lg p-5 shadow-md">
            <h3 className="text-lg font-semibold">Event 3</h3>
            <p className="text-sm text-gray-500">Description</p>
            <Button className="mt-5">Register</Button>
          </div>
        </div>

      </div>
    </div>
  );
}
